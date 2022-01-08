.class public Lim/imkey/imkeylibrary/device/SeCheck;
.super Lim/imkey/imkeylibrary/device/TsmRequest;
.source "SeCheck.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "seSecureCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/TsmRequest;-><init>()V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;
    .locals 5

    .line 90
    new-instance v0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;-><init>()V

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "_ReturnCode"

    .line 93
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->set_ReturnCode(Ljava/lang/String;)V

    const-string p1, "_ReturnMsg"

    .line 94
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->set_ReturnMsg(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "000000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_ReturnData"

    .line 96
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 97
    new-instance v1, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    invoke-direct {v1, v0}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;-><init>(Lim/imkey/imkeylibrary/device/model/CommonResponse;)V

    const-string v2, "seid"

    .line 98
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setSeid(Ljava/lang/String;)V

    const-string v2, "nextStepKey"

    .line 99
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setNextStepKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "apduList"

    .line 101
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 103
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 104
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setApduList(Ljava/util/List;)V

    .line 109
    :cond_1
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->set_ReturnData(Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private toJson(Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;)Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "seid"

    .line 70
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getSeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sn"

    .line 71
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stepKey"

    .line 72
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusWord"

    .line 73
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getStatusWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceCert"

    .line 74
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getDeviceCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandID"

    .line 75
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getCommandID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 77
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getCardRetDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getCardRetDataList()Ljava/util/List;

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

    .line 79
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "cardRetDataList"

    .line 82
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkSe(Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;)Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;
    .locals 6

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_7

    const-string v1, "seSecureCheck"

    .line 25
    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setCommandID(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/SeCheck;->toJson(Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 32
    invoke-static {v1, v2}, Lim/imkey/imkeylibrary/net/Https;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/device/SeCheck;->fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->get_ReturnData()Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 40
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;-><init>()V

    .line 44
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setStepKey(Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 48
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v4

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    .line 52
    invoke-virtual {p0, v4}, Lim/imkey/imkeylibrary/device/SeCheck;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setStatusWord(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 58
    :cond_3
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getSeid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setSeid(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setSn(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/device/SeCheck;->checkSe(Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;)Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    .line 35
    :cond_5
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_json_parse_error"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
