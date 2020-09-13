.class public Leu/chainfire/adbd/MainActivity;
.super Landroid/preference/PreferenceActivity;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/preference/PreferenceScreen;

.field private f:Landroid/content/SharedPreferences;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Copyright &#169; 2012-2014 &#8211; Chainfire<br>Twitter: @ChainfireXDA<br>G+: http://google.com/+Chainfire<br>Tap to visit XDA thread"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/adbd/MainActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "adbd Insecure"

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->d:Landroid/os/Handler;

    iput-object v1, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Leu/chainfire/adbd/MainActivity;->f:Landroid/content/SharedPreferences;

    iput-object v1, p0, Leu/chainfire/adbd/MainActivity;->g:Landroid/preference/Preference;

    iput-object v1, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Leu/chainfire/adbd/MainActivity;->i:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method static synthetic a(Leu/chainfire/adbd/MainActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/preference/PreferenceScreen;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Leu/chainfire/adbd/MainActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Leu/chainfire/adbd/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Leu/chainfire/adbd/MainActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "copyright"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v1, Leu/chainfire/adbd/i;

    invoke-direct {v1, p0}, Leu/chainfire/adbd/i;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    const-string v1, "adbd"

    invoke-static {p0, v0, v1}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    const-string v0, "Current status"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->g:Landroid/preference/Preference;

    const-string v2, "Enable insecure adbd"

    const-string v3, "(USB debugging must also be enabled)"

    const-string v4, ""

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    new-instance v2, Leu/chainfire/adbd/j;

    invoke-direct {v2, p0}, Leu/chainfire/adbd/j;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "Enable at boot"

    const-string v3, "(USB debugging must also be enabled)"

    const-string v4, "enable_at_boot"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->i:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    const-string v1, "Play"

    invoke-static {p0, v0, v1}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const-string v1, "My apps on Google Play"

    const-string v2, "View all my apps on Google Play"

    new-instance v3, Leu/chainfire/adbd/m;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/m;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    const-string v1, "Follow me on Twitter or G+"

    const-string v2, "Stay up to date with my developments"

    new-instance v3, Leu/chainfire/adbd/n;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/n;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Leu/chainfire/adbd/t;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->f:Landroid/content/SharedPreferences;

    const-string v1, "shown_follow"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_follow"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v7}, Leu/chainfire/adbd/MainActivity;->a(Z)V

    :cond_0
    invoke-direct {p0}, Leu/chainfire/adbd/MainActivity;->b()V

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->e:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/adbd/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "adbd Insecure"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Leu/chainfire/adbd/d;

    invoke-direct {v2, p0}, Leu/chainfire/adbd/d;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/adbd/g;

    invoke-direct {v1, p0, p3}, Leu/chainfire/adbd/g;-><init>(Leu/chainfire/adbd/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/adbd/h;

    invoke-direct {v1, p0, p3}, Leu/chainfire/adbd/h;-><init>(Leu/chainfire/adbd/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/adbd/MainActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Follow me"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Stay up to date with my developments, follow me on Twitter or Google Plus."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Twitter"

    new-instance v3, Leu/chainfire/adbd/o;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/o;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Google Plus"

    new-instance v3, Leu/chainfire/adbd/p;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/p;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No thanks"

    new-instance v3, Leu/chainfire/adbd/e;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/e;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/adbd/MainActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Follow me"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Twitter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Google Plus"

    aput-object v4, v2, v3

    new-instance v3, Leu/chainfire/adbd/f;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/f;-><init>(Leu/chainfire/adbd/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Close"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Leu/chainfire/adbd/MainActivity;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/adbd/MainActivity;->a()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Leu/chainfire/adbd/a;->a()Z

    move-result v1

    invoke-static {}, Leu/chainfire/adbd/a;->b()Z

    move-result v2

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->g:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Leu/chainfire/adbd/MainActivity;->g:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Binary: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v0, "Insecure"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "USB debugging: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Original"

    goto :goto_0

    :cond_3
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method static synthetic c(Leu/chainfire/adbd/MainActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->h:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Leu/chainfire/adbd/MainActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/MainActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Leu/chainfire/adbd/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/adbd/MainActivity;->b()V

    return-void
.end method

.method static synthetic f(Leu/chainfire/adbd/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/adbd/MainActivity;->a(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Leu/chainfire/adbd/MainActivity;->c:Landroid/content/Context;

    invoke-virtual {p0}, Leu/chainfire/adbd/MainActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->f:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-virtual {p0}, Leu/chainfire/adbd/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/adbd/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adbd Insecure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/adbd/MainActivity;->a:Ljava/lang/String;

    new-instance v0, Leu/chainfire/adbd/q;

    invoke-direct {v0, p0, v4}, Leu/chainfire/adbd/q;-><init>(Leu/chainfire/adbd/MainActivity;B)V

    iget-object v1, p0, Leu/chainfire/adbd/MainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Leu/chainfire/adbd/q;->a(Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Leu/chainfire/adbd/MainActivity;->finish()V

    return-void
.end method
