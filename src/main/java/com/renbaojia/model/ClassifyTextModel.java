package com.renbaojia.model;

/**
 * Created by smallRen on 2017/10/8.
 */
public class ClassifyTextModel {
    private Integer id;
    private String textColor;
    private String text;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public ClassifyTextModel(Integer id, String textColor, String text) {
        this.id = id;
        this.textColor = textColor;
        this.text = text;
    }

    public String getTextColor() {
        return textColor;
    }

    public void setTextColor(String textColor) {
        this.textColor = textColor;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
