//package hib.dat100.testassignment;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestA {

	@Test
	public void testinc() {
		A a = new A();
		assertEquals(5,a.inc(4));
	}
	
	@Test
	public void testdec() {
		A a = new A();
		assertEquals(3,a.dec(4));
	}
}
