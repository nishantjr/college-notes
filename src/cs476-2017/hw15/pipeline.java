
class Main {
	static public void main (String argv[]) {
		Connector c1, c2, c3;
		c1 = new Connector(); 
		c2 = new Connector();
		c3 = new Connector();

		Stage s1, s2;
		Listener l;
		s1 = new Stage(1, c1, c2);
		s2 = new Stage(2, c2, c3);
		l  = new Listener(c3);

		s1.start();
		s2.start();
		l.start();

		for (int i=1; i<2; i=i+1) c1.add(i);
		// c1.stop(); 
	}
}

class Connector {
	public int queue = -1;
	public synchronized int take(){
		int value;
		while ( queue < 0 )
			try {wait();} catch (InterruptedException ex) {}
		value = queue; queue = -1; return value;
	}
	public synchronized void add(int o) { queue = o; notifyAll(); }
	public synchronized void stop(){ queue = 0; notifyAll(); }
}

class Stage extends Thread {
	int id; Connector c1, c2;
	int stop = -1;
	public Stage(int i, Connector a1, Connector a2)
		{ id = i; c1 = a1; c2 = a2; }
	public void run() {
		int tmp = -1;
		while (tmp != 0)
			if ((tmp=c1.take()) != 0){
				c2.add(tmp+1);
			}
		stop = 0;
		c2.stop();
	}
}

class Listener extends Thread {
	Connector c;
	int stop = -1;
	public Listener(Connector con) { this.c = con; }
	public void run(){
		int tmp = -1;
		while (tmp != 0)
			if ((tmp=c.take()) != 0);
		stop = 0;
		System.out.println("Listener stop.");
	}
}
