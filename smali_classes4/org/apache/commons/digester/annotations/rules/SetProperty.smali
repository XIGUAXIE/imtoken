.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/SetProperty;
.super Ljava/lang/Object;
.source "SetProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/commons/digester/annotations/rules/SetProperty;
        attributeName = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/annotations/rules/SetProperty$List;
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
    handledBy = Lorg/apache/commons/digester/annotations/handlers/SetPropertiesLoaderHandler;
    providedBy = Lorg/apache/commons/digester/annotations/providers/SetPropertiesRuleProvider;
    reflectsRule = Lorg/apache/commons/digester/SetPropertiesRule;
.end annotation


# virtual methods
.method public abstract attributeName()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method
