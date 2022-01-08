.class public final enum Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
.super Ljava/lang/Enum;
.source "RNPromptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/shimo/react/prompt/RNPromptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PromptTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum PHONE_PAD:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x0

    const-string v2, "TYPE_DEFAULT"

    const-string v3, "default"

    invoke-direct {v0, v2, v1, v3}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 33
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v2, 0x1

    const-string v3, "PLAIN_TEXT"

    const-string v4, "plain-text"

    invoke-direct {v0, v3, v2, v4}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 34
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v3, 0x2

    const-string v4, "SECURE_TEXT"

    const-string v5, "secure-text"

    invoke-direct {v0, v4, v3, v5}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 35
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v4, 0x3

    const-string v5, "NUMERIC"

    const-string v6, "numeric"

    invoke-direct {v0, v5, v4, v6}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 36
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v5, 0x4

    const-string v6, "EMAIL_ADDRESS"

    const-string v7, "email-address"

    invoke-direct {v0, v6, v5, v7}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 37
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v6, 0x5

    const-string v7, "PHONE_PAD"

    const-string v8, "phone-pad"

    invoke-direct {v0, v7, v6, v8}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PHONE_PAD:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v7, 0x6

    new-array v7, v7, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 31
    sget-object v8, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    aput-object v8, v7, v1

    sget-object v1, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    aput-object v1, v7, v2

    sget-object v1, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    aput-object v1, v7, v3

    sget-object v1, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    aput-object v1, v7, v4

    sget-object v1, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->$VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    .locals 1

    .line 31
    const-class v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-object p0
.end method

.method public static values()[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    .locals 1

    .line 31
    sget-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->$VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    invoke-virtual {v0}, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->mName:Ljava/lang/String;

    return-object v0
.end method
