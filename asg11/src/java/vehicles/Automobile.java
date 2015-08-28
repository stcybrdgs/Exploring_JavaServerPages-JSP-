// Automobile.java
package vehicles;
public class Automobile
{
    private String carManufacturer;
    private String carModel;
    private String carYear;
    private String carOrderInfo;

    // default constructer
    public Automobile()
    {
        carManufacturer = "";
        carModel = "";
        carYear = "";
        carOrderInfo = "";
    }

    // parameterized constructor
    public Automobile(String carManufacturer, String carModel,
        String carYear, String carOrderInfo)
    {
        this.carManufacturer = carManufacturer;
        this.carModel = carModel;
        this.carYear = carYear;
        this.carOrderInfo = carOrderInfo;
    }

    // Mutator Methods -----------------------------
    public void setCarManufacturer(String carManufacturer)
    {
        this.carManufacturer = carManufacturer;
    }
    public void setCarModel(String carModel)
    {
        this.carModel = carModel;  	
    }   
    public void setCarYear(String carYear)
    {
        this.carYear = carYear;  	
    }
    public void setCarOrderInfo(String carOrderInfo)
    {
        this.carOrderInfo = carOrderInfo;   	
    }

    // Accessor Methods ---------------------------
    public String getCarManufacturer()
    {
        return carManufacturer;
    }
    public String getCarModel()
    {
        return carModel;
    }   
    public String getCarYear()
    {
        return carYear;
    }
    public String getCarOrderInfo()
    {
        return carOrderInfo;
    }   
} // end class