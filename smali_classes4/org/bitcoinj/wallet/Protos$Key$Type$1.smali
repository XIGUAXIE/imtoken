.class final Lorg/bitcoinj/wallet/Protos$Key$Type$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lorg/bitcoinj/wallet/Protos$Key$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 2761
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Type$1;->findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 0

    .line 2763
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Key$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object p1

    return-object p1
.end method
