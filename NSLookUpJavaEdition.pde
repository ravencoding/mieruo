import java.net.*;

public class NSLookUpJavaEdition{
  public String host = "";
  
    public String execute(String args){
            try {
                InetAddress[] addressList = InetAddress.getAllByName(args);
                System.out.print( args + ":");
                System.out.println("\t" + addressList[0].getHostName());
//                for( int i = 0 ; i < addressList.length ; i++ ){
//                    System.out.println("\t" + addressList[i].getHostAddress());
//                }
                 this.host = addressList[0].getHostName();
                
            }
            catch( UnknownHostException e ){
                System.err.println("Unable to find address for " + args);
            }
       return host;
    }
}
