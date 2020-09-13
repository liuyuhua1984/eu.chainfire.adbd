.class public Leu/chainfire/adbd/BootCompleteService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CF-ADBD IntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/adbd/BootCompleteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/adbd/a;->a(Landroid/content/Context;)I

    return-void
.end method
