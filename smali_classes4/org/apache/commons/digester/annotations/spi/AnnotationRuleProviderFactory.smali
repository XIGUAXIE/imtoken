.class public interface abstract Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;
.super Ljava/lang/Object;
.source "AnnotationRuleProviderFactory.java"


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            "+",
            "Lorg/apache/commons/digester/Rule;",
            ">;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/annotations/DigesterLoadingException;
        }
    .end annotation
.end method
