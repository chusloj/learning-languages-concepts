package bus.reservation.client;

import bus.reservation.server.TicketCounter;
import bus.reservation.server.TicketBookingThread;

public class Test {

    public static void main(String[] args) {
        TicketCounter ticketCounter = new TicketCounter();
        TicketBookingThread t1 = new TicketBookingThread(ticketCounter, "John", 2);
        TicketBookingThread t2 = new TicketBookingThread(ticketCounter, "James", 2);

        t1.start();
        t2.start();
    }

}
