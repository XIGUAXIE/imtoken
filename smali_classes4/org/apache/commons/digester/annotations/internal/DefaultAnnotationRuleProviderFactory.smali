.class public final Lorg/apache/commons/digester/annotations/internal/DefaultAnnotationRuleProviderFactory;
.super Ljava/lang/Object;
.source "DefaultAnnotationRuleProviderFactory.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;
    .locals 4
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

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lorg/apache/commons/digester/annotations/DigesterLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while creating \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' instance"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/digester/annotations/DigesterLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
