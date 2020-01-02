package entity;

public class User {
    private String username;
    private String password;
    private String email;
    private String cratetime;
    private String power;

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCratetime() {
        return cratetime;
    }

    public void setCratetime(String cratetime) {
        this.cratetime = cratetime;
    }
}
