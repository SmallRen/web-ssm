package com.renbaojia.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class VideoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VideoExample() {
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

        public Criteria andVIdIsNull() {
            addCriterion("v_id is null");
            return (Criteria) this;
        }

        public Criteria andVIdIsNotNull() {
            addCriterion("v_id is not null");
            return (Criteria) this;
        }

        public Criteria andVIdEqualTo(Integer value) {
            addCriterion("v_id =", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdNotEqualTo(Integer value) {
            addCriterion("v_id <>", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdGreaterThan(Integer value) {
            addCriterion("v_id >", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("v_id >=", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdLessThan(Integer value) {
            addCriterion("v_id <", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdLessThanOrEqualTo(Integer value) {
            addCriterion("v_id <=", value, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdIn(List<Integer> values) {
            addCriterion("v_id in", values, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdNotIn(List<Integer> values) {
            addCriterion("v_id not in", values, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdBetween(Integer value1, Integer value2) {
            addCriterion("v_id between", value1, value2, "vId");
            return (Criteria) this;
        }

        public Criteria andVIdNotBetween(Integer value1, Integer value2) {
            addCriterion("v_id not between", value1, value2, "vId");
            return (Criteria) this;
        }

        public Criteria andVScIdIsNull() {
            addCriterion("v_sc_id is null");
            return (Criteria) this;
        }

        public Criteria andVScIdIsNotNull() {
            addCriterion("v_sc_id is not null");
            return (Criteria) this;
        }

        public Criteria andVScIdEqualTo(Integer value) {
            addCriterion("v_sc_id =", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdNotEqualTo(Integer value) {
            addCriterion("v_sc_id <>", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdGreaterThan(Integer value) {
            addCriterion("v_sc_id >", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("v_sc_id >=", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdLessThan(Integer value) {
            addCriterion("v_sc_id <", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdLessThanOrEqualTo(Integer value) {
            addCriterion("v_sc_id <=", value, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdIn(List<Integer> values) {
            addCriterion("v_sc_id in", values, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdNotIn(List<Integer> values) {
            addCriterion("v_sc_id not in", values, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdBetween(Integer value1, Integer value2) {
            addCriterion("v_sc_id between", value1, value2, "vScId");
            return (Criteria) this;
        }

        public Criteria andVScIdNotBetween(Integer value1, Integer value2) {
            addCriterion("v_sc_id not between", value1, value2, "vScId");
            return (Criteria) this;
        }

        public Criteria andVDateIsNull() {
            addCriterion("v_date is null");
            return (Criteria) this;
        }

        public Criteria andVDateIsNotNull() {
            addCriterion("v_date is not null");
            return (Criteria) this;
        }

        public Criteria andVDateEqualTo(Date value) {
            addCriterion("v_date =", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateNotEqualTo(Date value) {
            addCriterion("v_date <>", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateGreaterThan(Date value) {
            addCriterion("v_date >", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateGreaterThanOrEqualTo(Date value) {
            addCriterion("v_date >=", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateLessThan(Date value) {
            addCriterion("v_date <", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateLessThanOrEqualTo(Date value) {
            addCriterion("v_date <=", value, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateIn(List<Date> values) {
            addCriterion("v_date in", values, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateNotIn(List<Date> values) {
            addCriterion("v_date not in", values, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateBetween(Date value1, Date value2) {
            addCriterion("v_date between", value1, value2, "vDate");
            return (Criteria) this;
        }

        public Criteria andVDateNotBetween(Date value1, Date value2) {
            addCriterion("v_date not between", value1, value2, "vDate");
            return (Criteria) this;
        }

        public Criteria andVLocationIsNull() {
            addCriterion("v_location is null");
            return (Criteria) this;
        }

        public Criteria andVLocationIsNotNull() {
            addCriterion("v_location is not null");
            return (Criteria) this;
        }

        public Criteria andVLocationEqualTo(String value) {
            addCriterion("v_location =", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationNotEqualTo(String value) {
            addCriterion("v_location <>", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationGreaterThan(String value) {
            addCriterion("v_location >", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationGreaterThanOrEqualTo(String value) {
            addCriterion("v_location >=", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationLessThan(String value) {
            addCriterion("v_location <", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationLessThanOrEqualTo(String value) {
            addCriterion("v_location <=", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationLike(String value) {
            addCriterion("v_location like", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationNotLike(String value) {
            addCriterion("v_location not like", value, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationIn(List<String> values) {
            addCriterion("v_location in", values, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationNotIn(List<String> values) {
            addCriterion("v_location not in", values, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationBetween(String value1, String value2) {
            addCriterion("v_location between", value1, value2, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVLocationNotBetween(String value1, String value2) {
            addCriterion("v_location not between", value1, value2, "vLocation");
            return (Criteria) this;
        }

        public Criteria andVPathIsNull() {
            addCriterion("v_path is null");
            return (Criteria) this;
        }

        public Criteria andVPathIsNotNull() {
            addCriterion("v_path is not null");
            return (Criteria) this;
        }

        public Criteria andVPathEqualTo(String value) {
            addCriterion("v_path =", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathNotEqualTo(String value) {
            addCriterion("v_path <>", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathGreaterThan(String value) {
            addCriterion("v_path >", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathGreaterThanOrEqualTo(String value) {
            addCriterion("v_path >=", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathLessThan(String value) {
            addCriterion("v_path <", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathLessThanOrEqualTo(String value) {
            addCriterion("v_path <=", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathLike(String value) {
            addCriterion("v_path like", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathNotLike(String value) {
            addCriterion("v_path not like", value, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathIn(List<String> values) {
            addCriterion("v_path in", values, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathNotIn(List<String> values) {
            addCriterion("v_path not in", values, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathBetween(String value1, String value2) {
            addCriterion("v_path between", value1, value2, "vPath");
            return (Criteria) this;
        }

        public Criteria andVPathNotBetween(String value1, String value2) {
            addCriterion("v_path not between", value1, value2, "vPath");
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