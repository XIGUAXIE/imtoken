.class final Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 8934
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;->findValueByNumber(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 0

    .line 8936
    invoke-static {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->valueOf(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object p1

    return-object p1
.end method
