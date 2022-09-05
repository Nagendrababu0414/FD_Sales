public class PriceDiscount {
    public  void discountOnBook(List<Opportunity> oppo){
        for(Opportunity opp : oppo){
            opp.Amount *=0.9;
        }
    }
}