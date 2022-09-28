package bus.reservation.server;

public class TicketBookingThread extends Thread {

    private TicketCounter ticketCounter;
    private String passName;
    private int numSeatsToBook;

    public TicketBookingThread(TicketCounter ticketCounter, String passName, int numSeatsToBook) {
        this.ticketCounter = ticketCounter;
        this.passName = passName;
        this.numSeatsToBook = numSeatsToBook;
    }

    public void run() {
        ticketCounter.bookTicket(passName, numSeatsToBook);
    }

}
