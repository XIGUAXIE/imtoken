.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/BeanPropertySetter;
.super Ljava/lang/Object;
.source "BeanPropertySetter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/annotations/rules/BeanPropertySetter$List;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/commons/digester/annotations/DigesterRule;
    providedBy = Lorg/apache/commons/digester/annotations/providers/BeanPropertySetterRuleProvider;
    reflectsRule = Lorg/apache/commons/digester/BeanPropertySetterRule;
.end annotation


# virtual methods
.method public abstract pattern()Ljava/lang/String;
.end method
