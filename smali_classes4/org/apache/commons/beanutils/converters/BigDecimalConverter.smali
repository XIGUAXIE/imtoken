.class public final Lorg/apache/commons/beanutils/converters/BigDecimalConverter;
.super Lorg/apache/commons/beanutils/converters/NumberConverter;
.source "BigDecimalConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/converters/NumberConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;-><init>(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 66
    const-class v0, Ljava/math/BigDecimal;

    return-object v0
.end method
