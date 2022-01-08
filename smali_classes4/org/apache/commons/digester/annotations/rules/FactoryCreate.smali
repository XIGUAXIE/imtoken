.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/FactoryCreate;
.super Ljava/lang/Object;
.source "FactoryCreate.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/commons/digester/annotations/rules/FactoryCreate;
        ignoreCreateExceptions = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/annotations/rules/FactoryCreate$List;
    }
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

.annotation runtime Lorg/apache/commons/digester/annotations/CreationRule;
.end annotation

.annotation runtime Lorg/apache/commons/digester/annotations/DigesterRule;
    providedBy = Lorg/apache/commons/digester/annotations/providers/FactoryCreateRuleProvider;
    reflectsRule = Lorg/apache/commons/digester/FactoryCreateRule;
.end annotation


# virtual methods
.method public abstract factoryClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/digester/AbstractObjectCreationFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ignoreCreateExceptions()Z
.end method

.method public abstract pattern()Ljava/lang/String;
.end method
