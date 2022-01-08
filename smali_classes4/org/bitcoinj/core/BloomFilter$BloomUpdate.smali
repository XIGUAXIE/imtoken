.class public final enum Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
.super Ljava/lang/Enum;
.source "BloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BloomUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/BloomFilter$BloomUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_NONE:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    const/4 v1, 0x0

    const-string v2, "UPDATE_NONE"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_NONE:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    .line 51
    new-instance v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    const/4 v2, 0x1

    const-string v3, "UPDATE_ALL"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    .line 53
    new-instance v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    const/4 v3, 0x2

    const-string v4, "UPDATE_P2PUBKEY_ONLY"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    .line 49
    sget-object v5, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_NONE:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->$VALUES:[Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    .locals 1

    .line 49
    const-class v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    .locals 1

    .line 49
    sget-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->$VALUES:[Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    return-object v0
.end method
