package com.renbaojia.model;

import java.util.ArrayList;
import java.util.List;

public class SpaceContentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SpaceContentExample() {
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

        public Criteria andScIdIsNull() {
            addCriterion("sc_id is null");
            return (Criteria) this;
        }

        public Criteria andScIdIsNotNull() {
            addCriterion("sc_id is not null");
            return (Criteria) this;
        }

        public Criteria andScIdEqualTo(Integer value) {
            addCriterion("sc_id =", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdNotEqualTo(Integer value) {
            addCriterion("sc_id <>", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdGreaterThan(Integer value) {
            addCriterion("sc_id >", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sc_id >=", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdLessThan(Integer value) {
            addCriterion("sc_id <", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdLessThanOrEqualTo(Integer value) {
            addCriterion("sc_id <=", value, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdIn(List<Integer> values) {
            addCriterion("sc_id in", values, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdNotIn(List<Integer> values) {
            addCriterion("sc_id not in", values, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdBetween(Integer value1, Integer value2) {
            addCriterion("sc_id between", value1, value2, "scId");
            return (Criteria) this;
        }

        public Criteria andScIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sc_id not between", value1, value2, "scId");
            return (Criteria) this;
        }

        public Criteria andScDateIsNull() {
            addCriterion("sc_date is null");
            return (Criteria) this;
        }

        public Criteria andScDateIsNotNull() {
            addCriterion("sc_date is not null");
            return (Criteria) this;
        }

        public Criteria andScDateEqualTo(String value) {
            addCriterion("sc_date =", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateNotEqualTo(String value) {
            addCriterion("sc_date <>", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateGreaterThan(String value) {
            addCriterion("sc_date >", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateGreaterThanOrEqualTo(String value) {
            addCriterion("sc_date >=", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateLessThan(String value) {
            addCriterion("sc_date <", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateLessThanOrEqualTo(String value) {
            addCriterion("sc_date <=", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateLike(String value) {
            addCriterion("sc_date like", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateNotLike(String value) {
            addCriterion("sc_date not like", value, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateIn(List<String> values) {
            addCriterion("sc_date in", values, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateNotIn(List<String> values) {
            addCriterion("sc_date not in", values, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateBetween(String value1, String value2) {
            addCriterion("sc_date between", value1, value2, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateNotBetween(String value1, String value2) {
            addCriterion("sc_date not between", value1, value2, "scDate");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeIsNull() {
            addCriterion("sc_date_describe is null");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeIsNotNull() {
            addCriterion("sc_date_describe is not null");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeEqualTo(String value) {
            addCriterion("sc_date_describe =", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeNotEqualTo(String value) {
            addCriterion("sc_date_describe <>", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeGreaterThan(String value) {
            addCriterion("sc_date_describe >", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("sc_date_describe >=", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeLessThan(String value) {
            addCriterion("sc_date_describe <", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeLessThanOrEqualTo(String value) {
            addCriterion("sc_date_describe <=", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeLike(String value) {
            addCriterion("sc_date_describe like", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeNotLike(String value) {
            addCriterion("sc_date_describe not like", value, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeIn(List<String> values) {
            addCriterion("sc_date_describe in", values, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeNotIn(List<String> values) {
            addCriterion("sc_date_describe not in", values, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeBetween(String value1, String value2) {
            addCriterion("sc_date_describe between", value1, value2, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScDateDescribeNotBetween(String value1, String value2) {
            addCriterion("sc_date_describe not between", value1, value2, "scDateDescribe");
            return (Criteria) this;
        }

        public Criteria andScLocationIsNull() {
            addCriterion("sc_location is null");
            return (Criteria) this;
        }

        public Criteria andScLocationIsNotNull() {
            addCriterion("sc_location is not null");
            return (Criteria) this;
        }

        public Criteria andScLocationEqualTo(String value) {
            addCriterion("sc_location =", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationNotEqualTo(String value) {
            addCriterion("sc_location <>", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationGreaterThan(String value) {
            addCriterion("sc_location >", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationGreaterThanOrEqualTo(String value) {
            addCriterion("sc_location >=", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationLessThan(String value) {
            addCriterion("sc_location <", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationLessThanOrEqualTo(String value) {
            addCriterion("sc_location <=", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationLike(String value) {
            addCriterion("sc_location like", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationNotLike(String value) {
            addCriterion("sc_location not like", value, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationIn(List<String> values) {
            addCriterion("sc_location in", values, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationNotIn(List<String> values) {
            addCriterion("sc_location not in", values, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationBetween(String value1, String value2) {
            addCriterion("sc_location between", value1, value2, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScLocationNotBetween(String value1, String value2) {
            addCriterion("sc_location not between", value1, value2, "scLocation");
            return (Criteria) this;
        }

        public Criteria andScDescribeIsNull() {
            addCriterion("sc_describe is null");
            return (Criteria) this;
        }

        public Criteria andScDescribeIsNotNull() {
            addCriterion("sc_describe is not null");
            return (Criteria) this;
        }

        public Criteria andScDescribeEqualTo(String value) {
            addCriterion("sc_describe =", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeNotEqualTo(String value) {
            addCriterion("sc_describe <>", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeGreaterThan(String value) {
            addCriterion("sc_describe >", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("sc_describe >=", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeLessThan(String value) {
            addCriterion("sc_describe <", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeLessThanOrEqualTo(String value) {
            addCriterion("sc_describe <=", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeLike(String value) {
            addCriterion("sc_describe like", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeNotLike(String value) {
            addCriterion("sc_describe not like", value, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeIn(List<String> values) {
            addCriterion("sc_describe in", values, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeNotIn(List<String> values) {
            addCriterion("sc_describe not in", values, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeBetween(String value1, String value2) {
            addCriterion("sc_describe between", value1, value2, "scDescribe");
            return (Criteria) this;
        }

        public Criteria andScDescribeNotBetween(String value1, String value2) {
            addCriterion("sc_describe not between", value1, value2, "scDescribe");
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