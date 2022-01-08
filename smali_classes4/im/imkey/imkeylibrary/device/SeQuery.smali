.class public Lim/imkey/imkeylibrary/device/SeQuery;
.super Lim/imkey/imkeylibrary/device/TsmRequest;
.source "SeQuery.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "seInfoQuery"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/TsmRequest;-><init>()V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;
    .locals 9

    const-string v0, "installedVersion"

    .line 95
    new-instance v1, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;

    invoke-direct {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;-><init>()V

    .line 97
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "_ReturnCode"

    .line 98
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->set_ReturnCode(Ljava/lang/String;)V

    const-string p1, "_ReturnMsg"

    .line 99
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->set_ReturnMsg(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "000000"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "BSE0007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    const-string p1, "_ReturnData"

    .line 102
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 103
    new-instance v2, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    invoke-direct {v2, v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;-><init>(Lim/imkey/imkeylibrary/device/model/CommonResponse;)V

    const-string v3, "seid"

    .line 104
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setSeid(Ljava/lang/String;)V

    const-string v3, "nextStepKey"

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setNextStepKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "apduList"

    .line 108
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 110
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 111
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v2, v5}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setApduList(Ljava/util/List;)V

    .line 117
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "availableAppBeanList"

    .line 118
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 119
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 121
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 122
    new-instance v7, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;

    invoke-direct {v7}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;-><init>()V

    const-string v8, "instanceAid"

    .line 123
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/imkey/imkeylibrary/device/Applet;->instanceAid2AppletName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {v7, v8}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setAppletName(Ljava/lang/String;)V

    const-string v8, "appLogo"

    .line 125
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setAppLogo(Ljava/lang/String;)V

    const-string v8, "lastUpdated"

    .line 126
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setLastUpated(Ljava/lang/String;)V

    const-string v8, "installMode"

    .line 127
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setInstallMode(Ljava/lang/String;)V

    const-string v8, "latestVersion"

    .line 128
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setLatestVersion(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 130
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->setInstalledVersion(Ljava/lang/String;)V

    .line 132
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "sdkMode"

    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->setSdkMode(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v3}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->setAvailableAppList(Ljava/util/List;)V

    .line 137
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->set_ReturnData(Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    :goto_2
    return-object v1
.end method

.method private toJson(Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;)Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "seid"

    .line 73
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getSeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sn"

    .line 74
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    .line 75
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stepKey"

    .line 76
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusWord"

    .line 77
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getStatusWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceCert"

    .line 78
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getDeviceCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandID"

    .line 79
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getCommandID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getCardRetDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getCardRetDataList()Ljava/util/List;

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

    .line 83
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "cardRetDataList"

    .line 86
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public query(Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;)Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;
    .locals 6

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_7

    const-string v1, "seInfoQuery"

    .line 28
    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setCommandID(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/SeQuery;->toJson(Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 35
    invoke-static {v1, v2}, Lim/imkey/imkeylibrary/net/Https;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/device/SeQuery;->fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 40
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnData()Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;-><init>()V

    .line 47
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setStepKey(Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 50
    :goto_0
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 51
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v4

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    .line 55
    invoke-virtual {p0, v4}, Lim/imkey/imkeylibrary/device/SeQuery;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setStatusWord(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 61
    :cond_3
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getSeid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setSeid(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setSn(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/device/SeQuery;->query(Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;)Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    .line 38
    :cond_5
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_json_parse_error"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
