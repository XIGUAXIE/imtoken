.class public final Lorg/apache/commons/beanutils/converters/DoubleConverter;
.super Lorg/apache/commons/beanutils/converters/NumberConverter;
.source "DoubleConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/converters/NumberConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Ljava/lang/Double;

    return-object v0
.end method
