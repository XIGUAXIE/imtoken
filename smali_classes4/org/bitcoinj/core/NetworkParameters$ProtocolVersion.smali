.class public final enum Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;
.super Ljava/lang/Enum;
.source "NetworkParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/NetworkParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtocolVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

.field public static final enum BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

.field public static final enum CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

.field public static final enum MINIMUM:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

.field public static final enum PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;


# instance fields
.field private final bitcoinProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 527
    new-instance v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    const v1, 0x11170

    const/4 v2, 0x0

    const-string v3, "MINIMUM"

    invoke-direct {v0, v3, v2, v1}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->MINIMUM:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    .line 528
    new-instance v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    const/4 v3, 0x1

    const-string v4, "PONG"

    const v5, 0xea61

    invoke-direct {v0, v4, v3, v5}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    .line 529
    new-instance v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    const/4 v4, 0x2

    const-string v5, "BLOOM_FILTER"

    invoke-direct {v0, v5, v4, v1}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    .line 530
    new-instance v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    const/4 v1, 0x3

    const-string v5, "CURRENT"

    const v6, 0x11171

    invoke-direct {v0, v5, v1, v6}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    .line 526
    sget-object v6, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->MINIMUM:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    aput-object v6, v5, v2

    sget-object v2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    aput-object v2, v5, v3

    sget-object v2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    aput-object v2, v5, v4

    aput-object v0, v5, v1

    sput-object v5, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->$VALUES:[Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 534
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 535
    iput p3, p0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->bitcoinProtocol:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;
    .locals 1

    .line 526
    const-class v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;
    .locals 1

    .line 526
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->$VALUES:[Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    return-object v0
.end method


# virtual methods
.method public getBitcoinProtocolVersion()I
    .locals 1

    .line 539
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->bitcoinProtocol:I

    return v0
.end method
