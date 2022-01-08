.class public Lorg/apache/commons/beanutils/ConvertUtilsBean2;
.super Lorg/apache/commons/beanutils/ConvertUtilsBean;
.source "ConvertUtilsBean2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean2;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean2;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 45
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean2;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
