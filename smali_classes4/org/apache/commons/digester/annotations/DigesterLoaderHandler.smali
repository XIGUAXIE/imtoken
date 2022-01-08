.class public interface abstract Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;
.super Ljava/lang/Object;
.source "DigesterLoaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        "E::",
        "Ljava/lang/reflect/AnnotatedElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TE;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation
.end method
