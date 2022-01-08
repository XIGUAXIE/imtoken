.class public final enum Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
.super Ljava/lang/Enum;
.source "HSDescriptorCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CookieType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field public static final enum COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field public static final enum COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const/4 v1, 0x0

    const-string v2, "COOKIE_BASIC"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const/4 v2, 0x1

    const-string v3, "COOKIE_STEALTH"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1

    .line 5
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1

    .line 5
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object v0
.end method
