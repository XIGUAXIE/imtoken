.class public final enum Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
.super Ljava/lang/Enum;
.source "PaymentChannelServerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 83
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v1, 0x0

    const-string v2, "UNINITIALISED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 84
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v2, 0x1

    const-string v3, "WAITING_FOR_REFUND_TRANSACTION"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 85
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v3, 0x2

    const-string v4, "WAITING_FOR_MULTISIG_CONTRACT"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 86
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v4, 0x3

    const-string v5, "WAITING_FOR_MULTISIG_ACCEPTANCE"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 87
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v5, 0x4

    const-string v6, "READY"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 88
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v6, 0x5

    const-string v7, "CLOSING"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 89
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v7, 0x6

    const-string v8, "CLOSED"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 90
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v8, 0x7

    const-string v9, "ERROR"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/16 v9, 0x8

    new-array v9, v9, [Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    .line 82
    sget-object v10, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v10, v9, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v2

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v3

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v4

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v5

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v6

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
    .locals 1

    .line 82
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
    .locals 1

    .line 82
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    return-object v0
.end method
