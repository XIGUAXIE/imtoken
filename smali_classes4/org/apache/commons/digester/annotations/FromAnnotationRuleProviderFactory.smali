.class public final Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;
.super Ljava/lang/Object;
.source "FromAnnotationRuleProviderFactory.java"


# instance fields
.field private final annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;->annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

    return-void
.end method


# virtual methods
.method public useDefaultDigesterLoaderHandlerFactory()Lorg/apache/commons/digester/annotations/DigesterLoader;
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/commons/digester/annotations/internal/DefaultDigesterLoaderHandlerFactory;

    invoke-direct {v0}, Lorg/apache/commons/digester/annotations/internal/DefaultDigesterLoaderHandlerFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;->useDigesterLoaderHandlerFactory(Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;)Lorg/apache/commons/digester/annotations/DigesterLoader;

    move-result-object v0

    return-object v0
.end method

.method public useDigesterLoaderHandlerFactory(Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;)Lorg/apache/commons/digester/annotations/DigesterLoader;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lorg/apache/commons/digester/annotations/DigesterLoader;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;->annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/digester/annotations/DigesterLoader;-><init>(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;)V

    return-object v0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \'digesterLoaderHandlerFactory\' must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
