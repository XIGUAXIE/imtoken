.class public final synthetic Lcom/helpscout/beacon/a/c/e/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/model/BeaconScreens;->values()[Lcom/helpscout/beacon/model/BeaconScreens;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/a/c/e/j/b;->a:[I

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->ARTICLE_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->CONTACT_FORM_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->PREVIOUS_MESSAGES:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->CHAT:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
