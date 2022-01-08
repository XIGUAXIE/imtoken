.class public final Lorg/apache/commons/beanutils/converters/DateConverter;
.super Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.source "DateConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 65
    const-class v0, Ljava/util/Date;

    return-object v0
.end method
