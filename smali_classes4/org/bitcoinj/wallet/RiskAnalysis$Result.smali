.class public final enum Lorg/bitcoinj/wallet/RiskAnalysis$Result;
.super Ljava/lang/Enum;
.source "RiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/RiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/RiskAnalysis$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/RiskAnalysis$Result;

.field public static final enum NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

.field public static final enum NON_STANDARD:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

.field public static final enum OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    .line 36
    new-instance v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    const/4 v2, 0x1

    const-string v3, "NON_FINAL"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    .line 37
    new-instance v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    const/4 v3, 0x2

    const-string v4, "NON_STANDARD"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_STANDARD:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    .line 34
    sget-object v5, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->$VALUES:[Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/RiskAnalysis$Result;
    .locals 1

    .line 34
    const-class v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/RiskAnalysis$Result;
    .locals 1

    .line 34
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->$VALUES:[Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/RiskAnalysis$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0
.end method
