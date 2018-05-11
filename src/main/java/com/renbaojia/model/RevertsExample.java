package com.renbaojia.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RevertsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RevertsExample() {
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

        public Criteria andRevertIdIsNull() {
            addCriterion("revert_id is null");
            return (Criteria) this;
        }

        public Criteria andRevertIdIsNotNull() {
            addCriterion("revert_id is not null");
            return (Criteria) this;
        }

        public Criteria andRevertIdEqualTo(Integer value) {
            addCriterion("revert_id =", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdNotEqualTo(Integer value) {
            addCriterion("revert_id <>", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdGreaterThan(Integer value) {
            addCriterion("revert_id >", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("revert_id >=", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdLessThan(Integer value) {
            addCriterion("revert_id <", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdLessThanOrEqualTo(Integer value) {
            addCriterion("revert_id <=", value, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdIn(List<Integer> values) {
            addCriterion("revert_id in", values, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdNotIn(List<Integer> values) {
            addCriterion("revert_id not in", values, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdBetween(Integer value1, Integer value2) {
            addCriterion("revert_id between", value1, value2, "revertId");
            return (Criteria) this;
        }

        public Criteria andRevertIdNotBetween(Integer value1, Integer value2) {
            addCriterion("revert_id not between", value1, value2, "revertId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdIsNull() {
            addCriterion("articles_id is null");
            return (Criteria) this;
        }

        public Criteria andArticlesIdIsNotNull() {
            addCriterion("articles_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticlesIdEqualTo(Integer value) {
            addCriterion("articles_id =", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdNotEqualTo(Integer value) {
            addCriterion("articles_id <>", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdGreaterThan(Integer value) {
            addCriterion("articles_id >", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("articles_id >=", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdLessThan(Integer value) {
            addCriterion("articles_id <", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdLessThanOrEqualTo(Integer value) {
            addCriterion("articles_id <=", value, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdIn(List<Integer> values) {
            addCriterion("articles_id in", values, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdNotIn(List<Integer> values) {
            addCriterion("articles_id not in", values, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdBetween(Integer value1, Integer value2) {
            addCriterion("articles_id between", value1, value2, "articlesId");
            return (Criteria) this;
        }

        public Criteria andArticlesIdNotBetween(Integer value1, Integer value2) {
            addCriterion("articles_id not between", value1, value2, "articlesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdIsNull() {
            addCriterion("commentaries_id is null");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdIsNotNull() {
            addCriterion("commentaries_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdEqualTo(Integer value) {
            addCriterion("commentaries_id =", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdNotEqualTo(Integer value) {
            addCriterion("commentaries_id <>", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdGreaterThan(Integer value) {
            addCriterion("commentaries_id >", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("commentaries_id >=", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdLessThan(Integer value) {
            addCriterion("commentaries_id <", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdLessThanOrEqualTo(Integer value) {
            addCriterion("commentaries_id <=", value, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdIn(List<Integer> values) {
            addCriterion("commentaries_id in", values, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdNotIn(List<Integer> values) {
            addCriterion("commentaries_id not in", values, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdBetween(Integer value1, Integer value2) {
            addCriterion("commentaries_id between", value1, value2, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andCommentariesIdNotBetween(Integer value1, Integer value2) {
            addCriterion("commentaries_id not between", value1, value2, "commentariesId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andDateIsNull() {
            addCriterion("date is null");
            return (Criteria) this;
        }

        public Criteria andDateIsNotNull() {
            addCriterion("date is not null");
            return (Criteria) this;
        }

        public Criteria andDateEqualTo(Date value) {
            addCriterion("date =", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotEqualTo(Date value) {
            addCriterion("date <>", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThan(Date value) {
            addCriterion("date >", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThanOrEqualTo(Date value) {
            addCriterion("date >=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThan(Date value) {
            addCriterion("date <", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThanOrEqualTo(Date value) {
            addCriterion("date <=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateIn(List<Date> values) {
            addCriterion("date in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotIn(List<Date> values) {
            addCriterion("date not in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateBetween(Date value1, Date value2) {
            addCriterion("date between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotBetween(Date value1, Date value2) {
            addCriterion("date not between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
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