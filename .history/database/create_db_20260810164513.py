import sqlite3
import os

# تحديد مسارات الملفات
SCHEMA_PATH = "database/schema.sql"
MOCK_DATA_PATH = "database/mock_data.sql"
DB_PATH = "database/ecommerce.db"

def build_database():
    print("⏳ جاري إنشاء قاعدة البيانات...")
    
    # 1. الاتصال بقاعدة البيانات (سيتم إنشاء ملف ecommerce.db تلقائيًا لو مش موجود)
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()

    # 2. قراءة وتنفيذ ملف الجداول (schema.sql)
    if os.path.exists(SCHEMA_PATH):
        with open(SCHEMA_PATH, 'r', encoding='utf-8') as f:
            schema_sql = f.read()
            cursor.executescript(schema_sql)
            print("✅ تم إنشاء الجداول من schema.sql")
    else:
        print(f"❌ خطأ: لم يتم العثور على الملف {SCHEMA_PATH}")

    # 3. قراءة وتنفيذ ملف البيانات (mock_data.sql)
    if os.path.exists(MOCK_DATA_PATH):
        with open(MOCK_DATA_PATH, 'r', encoding='utf-8') as f:
            mock_sql = f.read()
            cursor.executescript(mock_sql)
            print("✅ تم إدخال البيانات التجريبية من mock_data.sql")
    else:
        print(f"❌ خطأ: لم يتم العثور على الملف {MOCK_DATA_PATH}")

    # 4. حفظ التغييرات وإغلاق الاتصال
    conn.commit()
    conn.close()
    
    print(f"🎉 تم بنجاح! الملف جاهز الآن في المسار: {os.path.abspath(DB_PATH)}")

if __name__ == "__main__":
    build_database()