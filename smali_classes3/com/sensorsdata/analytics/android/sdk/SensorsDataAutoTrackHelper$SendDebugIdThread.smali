.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;
.super Ljava/lang/Thread;
.source "SensorsDataAutoTrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendDebugIdThread"
.end annotation


# instance fields
.field private distinctId:Ljava/lang/String;

.field private infoId:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1802
    invoke-direct {p0, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1803
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->distinctId:Ljava/lang/String;

    .line 1804
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->infoId:Ljava/lang/String;

    .line 1805
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method private closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1867
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1869
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1874
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1876
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 1881
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1883
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 1888
    :try_start_3
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1890
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private sendHttpRequest(Ljava/lang/String;Z)V
    .locals 13

    const-string v0, "SensorsDataAutoTrackHelper"

    const/4 v1, 0x0

    .line 1820
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&info_id=%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->infoId:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v3, "DebugMode URL:%s"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 1821
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1822
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v3, :cond_0

    :try_start_1
    const-string p1, "can not connect %s,shouldn\'t happen"

    new-array p2, v4, [Ljava/lang/Object;

    .line 1824
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v7

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1860
    invoke-direct {p0, v1, v1, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 1827
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1828
    instance-of v5, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    .line 1829
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1831
    :cond_1
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1832
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1833
    :try_start_3
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1834
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"distinct_id\": \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->distinctId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"}"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1835
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    const-string v5, "DebugMode request body : %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v7

    .line 1837
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1838
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1839
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "POST"

    .line 1840
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-type"

    const-string v6, "text/plain"

    .line 1841
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1844
    :try_start_4
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1845
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1846
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1847
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1848
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 1849
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, "DebugMode \u540e\u7aef\u7684\u54cd\u5e94\u7801\u662f:%d"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p2, :cond_2

    .line 1850
    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataHttpURLConnectionHelper;->needRedirects(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1851
    invoke-static {v3, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataHttpURLConnectionHelper;->getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1853
    invoke-direct {p0, v2, v5, v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 1854
    invoke-direct {p0, p1, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->sendHttpRequest(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1860
    :cond_2
    invoke-direct {p0, v2, v5, v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v6, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v6, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v5, v1

    move-object v6, v5

    :goto_0
    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v5, v1

    move-object v6, v5

    :goto_1
    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v5, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v5, v1

    goto :goto_3

    :catchall_4
    move-exception p1

    move-object v3, v1

    move-object v5, v3

    :goto_2
    move-object v6, v5

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v3, v1

    move-object v5, v3

    :goto_3
    move-object v6, v5

    .line 1858
    :goto_4
    :try_start_6
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1860
    invoke-direct {p0, v1, v5, v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    :goto_5
    return-void

    :catchall_5
    move-exception p1

    :goto_6
    invoke-direct {p0, v1, v5, v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 1861
    throw p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1810
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1811
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->serverUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$SendDebugIdThread;->sendHttpRequest(Ljava/lang/String;Z)V

    return-void
.end method
