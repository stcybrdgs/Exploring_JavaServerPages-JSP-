// Aircraft.java
package vehicles;
public class Aircraft
{
    private String planeManufacturer;
    private String planeModel;
    private String planeSafetyRating;
    private String planeOrderInfo;

    // default constructer
    public Aircraft()
    {
        planeManufacturer = "";
        planeModel = "";
        planeSafetyRating = "";
        planeOrderInfo = "";
    }

    // parameterized constructor
    public Aircraft(String planeManufacturer, String planeModel,
        String planeSafetyRating, String planeOrderInfo)
    {
        this.planeManufacturer = planeManufacturer;
        this.planeModel = planeModel;
        this.planeSafetyRating = planeSafetyRating;
        this.planeOrderInfo = planeOrderInfo;
    }

    // Mutator Methods -----------------------------
    public void setPlaneManufacturer(String planeManufacturer)
    {
        this.planeManufacturer = planeManufacturer;
    }
    public void setPlaneModel(String planeModel)
    {
        this.planeModel = planeModel;  	
    }   
        public void setPlaneSafetyRating(String planeSafetyRating)
    {
        this.planeSafetyRating = planeSafetyRating;  	
    }
    public void setPlaneOrderInfo(String planeOrderInfo)
    {
        this.planeOrderInfo = planeOrderInfo;   	
    }

    // Accessor Methods ---------------------------
    public String getPlaneManufacturer()
    {
        return planeManufacturer;
    }
    public String getPlaneModel()
    {
        return planeModel;
    }   
    public String getPlaneSafetyRating()
    {
        return planeSafetyRating;
    }
    public String getPlaneOrderInfo()
    {
        return planeOrderInfo;
    }   
} // end class