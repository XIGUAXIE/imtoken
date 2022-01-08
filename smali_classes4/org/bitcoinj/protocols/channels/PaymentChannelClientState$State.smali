.class public final enum Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
.super Ljava/lang/Enum;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

.field public static final enum WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 84
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v1, 0x0

    const-string v2, "UNINITIALISED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 85
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v2, 0x1

    const-string v3, "NEW"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 86
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v3, 0x2

    const-string v4, "INITIATED"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 87
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v4, 0x3

    const-string v5, "WAITING_FOR_SIGNED_REFUND"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 88
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v5, 0x4

    const-string v6, "SAVE_STATE_IN_WALLET"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 89
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v6, 0x5

    const-string v7, "PROVIDE_MULTISIG_CONTRACT_TO_SERVER"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 90
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v7, 0x6

    const-string v8, "READY"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 91
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/4 v8, 0x7

    const-string v9, "EXPIRED"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 92
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/16 v9, 0x8

    const-string v10, "CLOSED"

    invoke-direct {v0, v10, v9}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    .line 83
    sget-object v11, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v11, v10, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v2

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v3

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v4

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v5

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v6

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v7

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
    .locals 1

    .line 83
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
    .locals 1

    .line 83
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    return-object v0
.end method
