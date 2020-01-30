package cn.anywhere.pojo;

import java.util.Date;

public class Route {
    private Integer id;
    private String title;
    private Double price;
    private String overview;
    private String detail;
    private String countryId;
    private Integer stateId;
    private Integer cityId;
    private String img;//图片路径
    private String publishStatus;
    private String auditStatus;
    private Date createTime;
    private Date modifyTime;

    public Route() {
    }
    public Route(Integer id, String title, Double price, String overview, String detail, String countryId, Integer stateId, Integer cityId, String img, String publishStatus, String auditStatus, Date createTime, Date modifyTime) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.overview = overview;
        this.detail = detail;
        this.countryId = countryId;
        this.stateId = stateId;
        this.cityId = cityId;
        this.img = img;
        this.publishStatus = publishStatus;
        this.auditStatus = auditStatus;
        this.createTime = createTime;
        this.modifyTime = modifyTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getCountryId() {
        return countryId;
    }

    public void setCountryId(String countryId) {
        this.countryId = countryId;
    }

    public Integer getStateId() {
        return stateId;
    }

    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPublishStatus() {
        return publishStatus;
    }

    public void setPublishStatus(String publishStatus) {
        this.publishStatus = publishStatus;
    }

    public String getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(String auditStatus) {
        this.auditStatus = auditStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    @Override
    public String toString() {
        return "Route{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", overview='" + overview + '\'' +
                ", detail='" + detail + '\'' +
                ", countryId='" + countryId + '\'' +
                ", stateId=" + stateId +
                ", cityId=" + cityId +
                ", img='" + img + '\'' +
                ", publishStatus='" + publishStatus + '\'' +
                ", auditStatus='" + auditStatus + '\'' +
                ", createTime=" + createTime +
                ", modifyTime=" + modifyTime +
                '}';
    }
}
