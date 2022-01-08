.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/BeanPropertySetter$List;
.super Ljava/lang/Object;
.source "BeanPropertySetter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/annotations/rules/BeanPropertySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "List"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/commons/digester/annotations/DigesterRuleList;
.end annotation


# virtual methods
.method public abstract value()[Lorg/apache/commons/digester/annotations/rules/BeanPropertySetter;
.end method
