.class public final enum Lorg/bitcoinj/script/Script$VerifyFlag;
.super Ljava/lang/Enum;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/script/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/script/Script$VerifyFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum CHECKLOCKTIMEVERIFY:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum CLEANSTACK:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum DERSIG:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum DISCOURAGE_UPGRADABLE_NOPS:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum MINIMALDATA:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum SIGPUSHONLY:Lorg/bitcoinj/script/Script$VerifyFlag;

.field public static final enum STRICTENC:Lorg/bitcoinj/script/Script$VerifyFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 69
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v1, 0x0

    const-string v2, "P2SH"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 70
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v2, 0x1

    const-string v3, "STRICTENC"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->STRICTENC:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 71
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v3, 0x2

    const-string v4, "DERSIG"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->DERSIG:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 72
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v4, 0x3

    const-string v5, "LOW_S"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 73
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v5, 0x4

    const-string v6, "NULLDUMMY"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 74
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v6, 0x5

    const-string v7, "SIGPUSHONLY"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->SIGPUSHONLY:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 75
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v7, 0x6

    const-string v8, "MINIMALDATA"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->MINIMALDATA:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 76
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/4 v8, 0x7

    const-string v9, "DISCOURAGE_UPGRADABLE_NOPS"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->DISCOURAGE_UPGRADABLE_NOPS:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 77
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/16 v9, 0x8

    const-string v10, "CLEANSTACK"

    invoke-direct {v0, v10, v9}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->CLEANSTACK:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 78
    new-instance v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    const/16 v10, 0x9

    const-string v11, "CHECKLOCKTIMEVERIFY"

    invoke-direct {v0, v11, v10}, Lorg/bitcoinj/script/Script$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->CHECKLOCKTIMEVERIFY:Lorg/bitcoinj/script/Script$VerifyFlag;

    const/16 v11, 0xa

    new-array v11, v11, [Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 68
    sget-object v12, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v12, v11, v1

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->STRICTENC:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v2

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->DERSIG:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v3

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v4

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v5

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->SIGPUSHONLY:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v6

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->MINIMALDATA:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v7

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->DISCOURAGE_UPGRADABLE_NOPS:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v8

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->CLEANSTACK:Lorg/bitcoinj/script/Script$VerifyFlag;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lorg/bitcoinj/script/Script$VerifyFlag;->$VALUES:[Lorg/bitcoinj/script/Script$VerifyFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/script/Script$VerifyFlag;
    .locals 1

    .line 68
    const-class v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/script/Script$VerifyFlag;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/script/Script$VerifyFlag;
    .locals 1

    .line 68
    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->$VALUES:[Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-virtual {v0}, [Lorg/bitcoinj/script/Script$VerifyFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/script/Script$VerifyFlag;

    return-object v0
.end method
