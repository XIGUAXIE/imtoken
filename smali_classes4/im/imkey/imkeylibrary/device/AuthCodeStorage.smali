.class public Lim/imkey/imkeylibrary/device/AuthCodeStorage;
.super Lim/imkey/imkeylibrary/device/TsmRequest;
.source "AuthCodeStorage.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "authCodeStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/TsmRequest;-><init>()V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;
    .locals 3

    .line 61
    new-instance v0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;-><init>()V

    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "_ReturnCode"

    .line 64
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->set_ReturnCode(Ljava/lang/String;)V

    const-string p1, "_ReturnMsg"

    .line 65
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->set_ReturnMsg(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "000000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_ReturnData"

    .line 67
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 68
    new-instance v1, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    invoke-direct {v1, v0}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;-><init>(Lim/imkey/imkeylibrary/device/model/CommonResponse;)V

    const-string v2, "seid"

    .line 69
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setSeid(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->set_ReturnData(Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private toJson(Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "seid"

    .line 42
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getSeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authCode"

    .line 43
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stepKey"

    .line 44
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusWord"

    .line 45
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getStatusWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandID"

    .line 46
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getCommandID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getCardRetDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->getCardRetDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "cardRetDataList"

    .line 53
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public authCodeStorage(Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;)Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;
    .locals 3

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_2

    const-string v1, "authCodeStorage"

    .line 23
    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->setCommandID(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/AuthCodeStorage;->toJson(Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {v1, p1}, Lim/imkey/imkeylibrary/net/Https;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/AuthCodeStorage;->fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_json_parse_error"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
