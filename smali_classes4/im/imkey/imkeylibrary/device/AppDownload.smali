.class public Lim/imkey/imkeylibrary/device/AppDownload;
.super Lim/imkey/imkeylibrary/device/TsmRequest;
.source "AppDownload.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "appDownload"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/TsmRequest;-><init>()V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;
    .locals 5

    .line 97
    new-instance v0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;-><init>()V

    .line 99
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "_ReturnCode"

    .line 100
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->set_ReturnCode(Ljava/lang/String;)V

    const-string p1, "_ReturnMsg"

    .line 101
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->set_ReturnMsg(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "000000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_ReturnData"

    .line 103
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 104
    new-instance v1, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    invoke-direct {v1, v0}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;-><init>(Lim/imkey/imkeylibrary/device/model/CommonResponse;)V

    const-string v2, "seid"

    .line 105
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setSeid(Ljava/lang/String;)V

    const-string v2, "nextStepKey"

    .line 106
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setNextStepKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "apduList"

    .line 108
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 110
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 111
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->setApduList(Ljava/util/List;)V

    .line 116
    :cond_1
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->set_ReturnData(Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private toJson(Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;)Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "seid"

    .line 77
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getSeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instanceAid"

    .line 78
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getInstanceAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stepKey"

    .line 79
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusWord"

    .line 80
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getStatusWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceCert"

    .line 81
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getDeviceCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandID"

    .line 82
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getCommandID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getCardRetDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getCardRetDataList()Ljava/util/List;

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

    .line 86
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "cardRetDataList"

    .line 89
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public download(Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;)Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;
    .locals 7

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_8

    const-string v1, "appDownload"

    .line 27
    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setCommandID(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/AppDownload;->toJson(Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 34
    invoke-static {v1, v2}, Lim/imkey/imkeylibrary/net/Https;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/device/AppDownload;->fromJson(Ljava/lang/String;)Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->get_ReturnData()Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 42
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;-><init>()V

    .line 46
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setStepKey(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 49
    :goto_0
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 50
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v4

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0, v4}, Lim/imkey/imkeylibrary/device/AppDownload;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getNextStepKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "03"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v3, :cond_1

    const-string v5, "9000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->getApduList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_2

    .line 60
    invoke-virtual {v0, v4}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setStatusWord(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 65
    :cond_4
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getSeid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setSeid(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->getInstanceAid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setInstanceAid(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/device/AppDownload;->download(Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;)Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0

    .line 37
    :cond_6
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_json_parse_error"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_7
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_8
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
