package com.renbaojia.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PictureExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PictureExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPIdIsNull() {
            addCriterion("p_id is null");
            return (Criteria) this;
        }

        public Criteria andPIdIsNotNull() {
            addCriterion("p_id is not null");
            return (Criteria) this;
        }

        public Criteria andPIdEqualTo(Integer value) {
            addCriterion("p_id =", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotEqualTo(Integer value) {
            addCriterion("p_id <>", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThan(Integer value) {
            addCriterion("p_id >", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_id >=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThan(Integer value) {
            addCriterion("p_id <", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThanOrEqualTo(Integer value) {
            addCriterion("p_id <=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdIn(List<Integer> values) {
            addCriterion("p_id in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotIn(List<Integer> values) {
            addCriterion("p_id not in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdBetween(Integer value1, Integer value2) {
            addCriterion("p_id between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotBetween(Integer value1, Integer value2) {
            addCriterion("p_id not between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPScIdIsNull() {
            addCriterion("p_sc_id is null");
            return (Criteria) this;
        }

        public Criteria andPScIdIsNotNull() {
            addCriterion("p_sc_id is not null");
            return (Criteria) this;
        }

        public Criteria andPScIdEqualTo(Integer value) {
            addCriterion("p_sc_id =", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdNotEqualTo(Integer value) {
            addCriterion("p_sc_id <>", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdGreaterThan(Integer value) {
            addCriterion("p_sc_id >", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_sc_id >=", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdLessThan(Integer value) {
            addCriterion("p_sc_id <", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdLessThanOrEqualTo(Integer value) {
            addCriterion("p_sc_id <=", value, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdIn(List<Integer> values) {
            addCriterion("p_sc_id in", values, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdNotIn(List<Integer> values) {
            addCriterion("p_sc_id not in", values, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdBetween(Integer value1, Integer value2) {
            addCriterion("p_sc_id between", value1, value2, "pScId");
            return (Criteria) this;
        }

        public Criteria andPScIdNotBetween(Integer value1, Integer value2) {
            addCriterion("p_sc_id not between", value1, value2, "pScId");
            return (Criteria) this;
        }

        public Criteria andPDateIsNull() {
            addCriterion("p_date is null");
            return (Criteria) this;
        }

        public Criteria andPDateIsNotNull() {
            addCriterion("p_date is not null");
            return (Criteria) this;
        }

        public Criteria andPDateEqualTo(Date value) {
            addCriterion("p_date =", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotEqualTo(Date value) {
            addCriterion("p_date <>", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThan(Date value) {
            addCriterion("p_date >", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateGreaterThanOrEqualTo(Date value) {
            addCriterion("p_date >=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThan(Date value) {
            addCriterion("p_date <", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateLessThanOrEqualTo(Date value) {
            addCriterion("p_date <=", value, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateIn(List<Date> values) {
            addCriterion("p_date in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotIn(List<Date> values) {
            addCriterion("p_date not in", values, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateBetween(Date value1, Date value2) {
            addCriterion("p_date between", value1, value2, "pDate");
            return (Criteria) this;
        }

        public Criteria andPDateNotBetween(Date value1, Date value2) {
            addCriterion("p_date not between", value1, value2, "pDate");
            return (Criteria) this;
        }

        public Criteria andPLocationIsNull() {
            addCriterion("p_location is null");
            return (Criteria) this;
        }

        public Criteria andPLocationIsNotNull() {
            addCriterion("p_location is not null");
            return (Criteria) this;
        }

        public Criteria andPLocationEqualTo(String value) {
            addCriterion("p_location =", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotEqualTo(String value) {
            addCriterion("p_location <>", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationGreaterThan(String value) {
            addCriterion("p_location >", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationGreaterThanOrEqualTo(String value) {
            addCriterion("p_location >=", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLessThan(String value) {
            addCriterion("p_location <", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLessThanOrEqualTo(String value) {
            addCriterion("p_location <=", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationLike(String value) {
            addCriterion("p_location like", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotLike(String value) {
            addCriterion("p_location not like", value, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationIn(List<String> values) {
            addCriterion("p_location in", values, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotIn(List<String> values) {
            addCriterion("p_location not in", values, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationBetween(String value1, String value2) {
            addCriterion("p_location between", value1, value2, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPLocationNotBetween(String value1, String value2) {
            addCriterion("p_location not between", value1, value2, "pLocation");
            return (Criteria) this;
        }

        public Criteria andPPathIsNull() {
            addCriterion("p_path is null");
            return (Criteria) this;
        }

        public Criteria andPPathIsNotNull() {
            addCriterion("p_path is not null");
            return (Criteria) this;
        }

        public Criteria andPPathEqualTo(String value) {
            addCriterion("p_path =", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathNotEqualTo(String value) {
            addCriterion("p_path <>", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathGreaterThan(String value) {
            addCriterion("p_path >", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathGreaterThanOrEqualTo(String value) {
            addCriterion("p_path >=", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathLessThan(String value) {
            addCriterion("p_path <", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathLessThanOrEqualTo(String value) {
            addCriterion("p_path <=", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathLike(String value) {
            addCriterion("p_path like", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathNotLike(String value) {
            addCriterion("p_path not like", value, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathIn(List<String> values) {
            addCriterion("p_path in", values, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathNotIn(List<String> values) {
            addCriterion("p_path not in", values, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathBetween(String value1, String value2) {
            addCriterion("p_path between", value1, value2, "pPath");
            return (Criteria) this;
        }

        public Criteria andPPathNotBetween(String value1, String value2) {
            addCriterion("p_path not between", value1, value2, "pPath");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}