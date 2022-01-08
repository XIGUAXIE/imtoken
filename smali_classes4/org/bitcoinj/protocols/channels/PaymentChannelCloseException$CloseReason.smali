.class public final enum Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
.super Ljava/lang/Enum;
.source "PaymentChannelCloseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CHANNEL_EXHAUSTED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CONNECTION_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum SERVER_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum UPDATE_PAYMENT_FAILED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v1, 0x0

    const-string v2, "NO_ACCEPTABLE_VERSION"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 28
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v2, 0x1

    const-string v3, "TIME_WINDOW_UNACCEPTABLE"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 30
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v3, 0x2

    const-string v4, "SERVER_REQUESTED_TOO_MUCH_VALUE"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 32
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v4, 0x3

    const-string v5, "CHANNEL_EXHAUSTED"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 43
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v5, 0x4

    const-string v6, "CLIENT_REQUESTED_CLOSE"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 55
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v6, 0x5

    const-string v7, "SERVER_REQUESTED_CLOSE"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 58
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v7, 0x6

    const-string v8, "REMOTE_SENT_ERROR"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 60
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/4 v8, 0x7

    const-string v9, "REMOTE_SENT_INVALID_MESSAGE"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 63
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/16 v9, 0x8

    const-string v10, "CONNECTION_CLOSED"

    invoke-direct {v0, v10, v9}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 66
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/16 v10, 0x9

    const-string v11, "UPDATE_PAYMENT_FAILED"

    invoke-direct {v0, v11, v10}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->UPDATE_PAYMENT_FAILED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const/16 v11, 0xa

    new-array v11, v11, [Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 24
    sget-object v12, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v12, v11, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v2

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v3

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v4

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v5

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v6

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v7

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v8

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1

    .line 24
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1

    .line 24
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method
