.class public interface abstract Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;
.super Ljava/lang/Object;
.source "AnnotationRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        "E::",
        "Ljava/lang/reflect/AnnotatedElement;",
        "R:",
        "Lorg/apache/commons/digester/Rule;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Lorg/apache/commons/digester/Rule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TE;)V"
        }
    .end annotation
.end method
