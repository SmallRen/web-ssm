package com.renbaojia.model;

/**
 * Created by smallRen on 2017/10/7.
 */
public class Address {
    private String location;
    private String concretely;

    public Address(String location, String concretely) {
        this.location = location;
        this.concretely = concretely;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getConcretely() {
        return concretely;
    }

    public void setConcretely(String concretely) {
        this.concretely = concretely;
    }
}
