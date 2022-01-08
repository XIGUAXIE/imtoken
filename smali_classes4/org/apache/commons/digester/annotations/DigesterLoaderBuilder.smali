.class public final Lorg/apache/commons/digester/annotations/DigesterLoaderBuilder;
.super Ljava/lang/Object;
.source "DigesterLoaderBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byDefaultFactories()Lorg/apache/commons/digester/annotations/DigesterLoader;
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/digester/annotations/DigesterLoaderBuilder;

    invoke-direct {v0}, Lorg/apache/commons/digester/annotations/DigesterLoaderBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/digester/annotations/DigesterLoaderBuilder;->useDefaultAnnotationRuleProviderFactory()Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;->useDefaultDigesterLoaderHandlerFactory()Lorg/apache/commons/digester/annotations/DigesterLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public useAnnotationRuleProviderFactory(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;)Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;
    .locals 1

    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;

    invoke-direct {v0, p1}, Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;-><init>(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;)V

    return-object v0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \'annotationRuleProviderFactory\' must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useDefaultAnnotationRuleProviderFactory()Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/digester/annotations/internal/DefaultAnnotationRuleProviderFactory;

    invoke-direct {v0}, Lorg/apache/commons/digester/annotations/internal/DefaultAnnotationRuleProviderFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/annotations/DigesterLoaderBuilder;->useAnnotationRuleProviderFactory(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;)Lorg/apache/commons/digester/annotations/FromAnnotationRuleProviderFactory;

    move-result-object v0

    return-object v0
.end method
