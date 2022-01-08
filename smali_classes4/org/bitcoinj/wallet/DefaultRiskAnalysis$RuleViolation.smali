.class public final enum Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
.super Ljava/lang/Enum;
.source "DefaultRiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/DefaultRiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleViolation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum DUST:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum NONEMPTY_STACK:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum SHORTEST_POSSIBLE_PUSHDATA:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum SIGNATURE_CANONICAL_ENCODING:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum VERSION:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 127
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 128
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v2, 0x1

    const-string v3, "VERSION"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 129
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v3, 0x2

    const-string v4, "DUST"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 130
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v4, 0x3

    const-string v5, "SHORTEST_POSSIBLE_PUSHDATA"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SHORTEST_POSSIBLE_PUSHDATA:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 131
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v5, 0x4

    const-string v6, "NONEMPTY_STACK"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONEMPTY_STACK:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 132
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v6, 0x5

    const-string v7, "SIGNATURE_CANONICAL_ENCODING"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SIGNATURE_CANONICAL_ENCODING:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    const/4 v7, 0x6

    new-array v7, v7, [Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 126
    sget-object v8, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v8, v7, v1

    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v7, v2

    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v7, v3

    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SHORTEST_POSSIBLE_PUSHDATA:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v7, v4

    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONEMPTY_STACK:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->$VALUES:[Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 1

    .line 126
    const-class v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 1

    .line 126
    sget-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->$VALUES:[Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object v0
.end method
