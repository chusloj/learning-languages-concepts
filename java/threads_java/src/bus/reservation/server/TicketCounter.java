package bus.reservation.server;

public class TicketCounter {

    private int seatsAvailable = 3;

    public synchronized void bookTicket(String passName, int numSeatsToBook) {

        if((seatsAvailable > 0) && (seatsAvailable >= numSeatsToBook)) {
            System.out.println("Hello " + passName + ", you have booked " + numSeatsToBook + " seats.");
            seatsAvailable -= numSeatsToBook;
        }
        else {
             System.out.println("Sorry " + passName + ", we cannot book the seats you requested.");
        }

    }
}
