.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/CallParam;
.super Ljava/lang/Object;
.source "CallParam.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/annotations/rules/CallParam$List;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/commons/digester/annotations/DigesterRule;
    providedBy = Lorg/apache/commons/digester/annotations/providers/CallParamRuleProvider;
    reflectsRule = Lorg/apache/commons/digester/CallParamRule;
.end annotation


# virtual methods
.method public abstract pattern()Ljava/lang/String;
.end method
