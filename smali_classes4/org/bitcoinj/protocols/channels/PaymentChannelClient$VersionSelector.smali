.class public final enum Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;
.super Ljava/lang/Enum;
.source "PaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VersionSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

.field public static final enum VERSION_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

.field public static final enum VERSION_2:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

.field public static final enum VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 85
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    const/4 v1, 0x0

    const-string v2, "VERSION_1"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    .line 86
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    const/4 v2, 0x1

    const-string v3, "VERSION_2_ALLOW_1"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    .line 87
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    const/4 v3, 0x2

    const-string v4, "VERSION_2"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    .line 84
    sget-object v5, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;
    .locals 1

    .line 84
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;
    .locals 1

    .line 84
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    return-object v0
.end method


# virtual methods
.method public getRequestedMajorVersion()I
    .locals 2

    .line 90
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method public getRequestedMinorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isServerVersionAccepted(II)Z
    .locals 4

    .line 105
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    return v0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method
