.class public final enum Lcom/helpscout/beacon/model/BeaconScreens;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/model/BeaconScreens;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/helpscout/beacon/model/BeaconScreens;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "SEARCH_SCREEN",
        "CONTACT_FORM_SCREEN",
        "ARTICLE_SCREEN",
        "PREVIOUS_MESSAGES",
        "CHAT",
        "ASK",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum ARTICLE_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum ASK:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum CHAT:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum CONTACT_FORM_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum DEFAULT:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum PREVIOUS_MESSAGES:Lcom/helpscout/beacon/model/BeaconScreens;

.field public static final enum SEARCH_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/helpscout/beacon/model/BeaconScreens;

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->DEFAULT:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x1

    const-string v3, "SEARCH_SCREEN"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->SEARCH_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x2

    const-string v3, "CONTACT_FORM_SCREEN"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->CONTACT_FORM_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x3

    const-string v3, "ARTICLE_SCREEN"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->ARTICLE_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x4

    const-string v3, "PREVIOUS_MESSAGES"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->PREVIOUS_MESSAGES:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x5

    const-string v3, "CHAT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->CHAT:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v2, 0x6

    const-string v3, "ASK"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/BeaconScreens;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->ASK:Lcom/helpscout/beacon/model/BeaconScreens;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/model/BeaconScreens;->$VALUES:[Lcom/helpscout/beacon/model/BeaconScreens;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/model/BeaconScreens;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/model/BeaconScreens;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/model/BeaconScreens;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/model/BeaconScreens;->$VALUES:[Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/model/BeaconScreens;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/model/BeaconScreens;

    return-object v0
.end method
