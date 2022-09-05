public class DiscountHandler {
    public static void disAmount(List<opportunity> oppo){
        for(opportunity opp : oppo){
            opp.amount *=0.9;
        }
    }
}