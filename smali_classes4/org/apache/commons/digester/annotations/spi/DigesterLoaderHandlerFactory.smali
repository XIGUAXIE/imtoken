.class public interface abstract Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;
.super Ljava/lang/Object;
.source "DigesterLoaderHandlerFactory.java"


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/commons/digester/annotations/DigesterLoaderHandler<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;>(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;)T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/annotations/DigesterLoadingException;
        }
    .end annotation
.end method
