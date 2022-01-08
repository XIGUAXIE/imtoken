.class synthetic Lcom/helpscout/beacon/ui/BeaconActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/ui/BeaconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpscout$beacon$model$BeaconScreens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/model/BeaconScreens;->values()[Lcom/helpscout/beacon/model/BeaconScreens;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/ui/BeaconActivity$1;->$SwitchMap$com$helpscout$beacon$model$BeaconScreens:[I

    :try_start_0
    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->DEFAULT:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/helpscout/beacon/ui/BeaconActivity$1;->$SwitchMap$com$helpscout$beacon$model$BeaconScreens:[I

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->SEARCH_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/helpscout/beacon/ui/BeaconActivity$1;->$SwitchMap$com$helpscout$beacon$model$BeaconScreens:[I

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->ASK:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
