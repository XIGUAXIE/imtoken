.class final Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 6994
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;->findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 0

    .line 6996
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object p1

    return-object p1
.end method
