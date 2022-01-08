.class public interface abstract annotation Lorg/apache/commons/digester/annotations/DigesterRule;
.super Ljava/lang/Object;
.source "DigesterRule.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/commons/digester/annotations/DigesterRule;
        handledBy = Lorg/apache/commons/digester/annotations/handlers/DefaultLoaderHandler;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract handledBy()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/digester/annotations/DigesterLoaderHandler<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract providedBy()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            "+",
            "Lorg/apache/commons/digester/Rule;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract reflectsRule()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end method
